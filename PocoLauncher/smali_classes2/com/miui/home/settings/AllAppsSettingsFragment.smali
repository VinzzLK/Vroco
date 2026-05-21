.class public Lcom/miui/home/settings/AllAppsSettingsFragment;
.super Lcom/miui/home/settings/BaseAllAppsSettingsFragment;
.source "AllAppsSettingsFragment.java"


# instance fields
.field private mHideApp:Lcom/miui/home/settings/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected findPreferences()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->findPreferences()V

    const-string v0, "key_hide_apps"

    .line 30
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mHideApp:Lcom/miui/home/settings/preference/CheckBoxPreference;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mHideApp:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 24
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mHideApp:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 25
    iget-object p1, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mHideApp:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/AllAppsSettingsFragment;->mHideApp:Lcom/miui/home/settings/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 36
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->changeHideAppsSwitch(Z)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->isHideAppsOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->onHideAppsSwitchClick(Z)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->changeHideAppsSwitch(Z)V

    .line 51
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
