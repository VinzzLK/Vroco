.class Lcom/miui/home/settings/MiuiHomeSettings$2;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/MiuiHomeSettings;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "[",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 322
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/MiuiHomeSettings$2;->accept([Ljava/lang/Boolean;)V

    return-void
.end method

.method public accept([Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x0

    .line 325
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object v1, v1, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 327
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object v1, p1, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 328
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object v1, p1, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$100(Lcom/miui/home/settings/MiuiHomeSettings;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 329
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 330
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    const p1, 0x7f10045c

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    goto :goto_1

    .line 332
    :cond_1
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    goto :goto_1

    .line 335
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->access$200(Lcom/miui/home/settings/MiuiHomeSettings;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$2;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    return-void
.end method
