using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatererService.Pages.Admins
{
    public partial class RoleManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) {
                UsersRoleList.DataBind();
                ddlUserList.DataBind();
                ddlUserList.SelectedIndex = 0;
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
                catch (Exception ex) {
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
            string selectUserName = ddlUserList.SelectedValue;
            string[] selectedUserRoles = System.Web.Security.Roles.GetRolesForUser(selectUserName);

            foreach (RepeaterItem ri in UsersRoleList.Items) {
                CheckBox RoleCheckBox = ri.FindControl("RoleCheckBox") as CheckBox;

                if (selectedUserRoles.Contains<string>(RoleCheckBox.Text)) 
                RoleCheckBox.Checked = true;
                else
                    RoleCheckBox.Checked = false;
            }
            throw new NotImplementedException();
        }

        protected void RoleCheckBox_CheckChanged(object sender, EventArgs e) {
            //Reference check box raise the event 
            CheckBox RoleCheckBox = sender as CheckBox;

            string selectedUserName = ddlUserList.SelectedValue;
            string roleName = RoleCheckBox.Text;

            if (RoleCheckBox.Checked)
            {
                System.Web.Security.Roles.AddUserToRole(selectedUserName, roleName);
                lblActionStatus.Text = string.Format("User {0} was added to {1}", selectedUserName, roleName);
            }
            else {
                System.Web.Security.Roles.RemoveUserFromRole(selectedUserName, roleName);
                lblActionStatus.Text = string.Format("User {0} was removed from role {1}", selectedUserName, roleName);
            }
        }
    }
}