.class public Lcom/miui/home/settings/PocoHomeSettings;
.super Lcom/miui/home/settings/MiuiHomeSettings;
.source "PocoHomeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/settings/MiuiHomeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkDefaultLauncher(Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.vroco.launcher"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 35
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mAllAppsSetting:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 37
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mMiuiHomeConfig:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 38
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 39
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSwitchPersonalAssistant:Lcom/miui/home/settings/preference/ValuePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 40
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistantSettings:Lcom/miui/home/settings/preference/ValuePreference;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mOpenPersonalAssistant:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 41
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mDoubleTapLockPref:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1, p2}, Lcom/miui/home/settings/MiuiHomeSettings;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
