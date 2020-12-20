using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatererService.Pages.Admin
{
    public partial class CatererManagement_admin_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                grdRoleList.DataBind();
                UsersRoleList.DataBind();
                ddUserList.DataBind();
                CheckRolesForSelectedUser();
            }
        }

        protected void btnNewRoles_Click(object sender, EventArgs e)
        {
            String roleName = txtRoleName.Text.Trim();

            if (!System.Web.Security.Roles.RoleExists(roleName))
            {
                try
                {
                    System.Web.Security.Roles.CreateRole(roleName);
                    lblActionStatus.Text = $"Role (<strong>){roleName} was created successfully";
                    grdRoleList.DataBind();
                }
                catch (Exception ex)
                {
                    lblActionStatus.Text = $"Role {roleName} was not created successfully.";
                }
            }
        }

        protected void ddUserList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CheckRolesForSelectedUser();
        }

        private void CheckRolesForSelectedUser()
        {
            // Determine what roles the selected user belongs to 
            string selectUserName = ddUserList.SelectedValue;
            string[] selectedUserRoles = System.Web.Security.Roles.GetRolesForUser(selectUserName);

            // Loop through the Repeater's Items and check or uncheck the checkbox as needed
            foreach (RepeaterItem ri in UsersRoleList.Items)
            {
                // Programmatically reference the CheckBox 
                CheckBox RoleCheckBox = ri.FindControl("RoleCheckBox") as CheckBox;
                // See if RoleCheckBox.Text is in selectedUsersRoles
                if (selectedUserRoles.Contains<string>(RoleCheckBox.Text))
                {
                    RoleCheckBox.Checked = true;
                }
                else
                {
                    RoleCheckBox.Checked = false;
                }
            }
        }

        protected void RoleCheckBox_CheckChanged(object sender, EventArgs e)
        {
            // Reference the CheckBox that raised this event 
            CheckBox RoleCheckBox = sender as CheckBox;

            // Get the currently selected user and role 
            string selectedUserName = ddUserList.SelectedValue;

            string roleName = RoleCheckBox.Text;

            // Determine if we need to add or remove the user from this role 
            if (RoleCheckBox.Checked)
            {
                // Add the user to the role 
                System.Web.Security.Roles.AddUserToRole(selectedUserName, roleName);
                // Display a status message 
                lblActionStatus.Text = string.Format("User {0} was added to {1}", selectedUserName, roleName);
            }
            else
            {
                // Remove the user from the role 
                System.Web.Security.Roles.RemoveUserFromRole(selectedUserName, roleName);
                // Display a status message 
                lblActionStatus.Text = string.Format("User {0} was removed from role {1}", selectedUserName, roleName);
            }
        }

        protected void grdRoleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedRole = grdRoleList.SelectedRow.Cells[2].Text;
            string[] usersInRole = System.Web.Security.Roles.GetUsersInRole(selectedRole);

            repUsersInRole.DataSource = usersInRole;
            repUsersInRole.DataBind();

            //display current selected role
            if (usersInRole.Count() == 0)
                lblSelectedRoleUSer.Text = "Role (<strong>" + selectedRole + "</strong>) has no users.";
            else
                lblSelectedRoleUSer.Text = "Role (<strong>" + selectedRole + "</strong>) has the following users:";
        }
    }
}