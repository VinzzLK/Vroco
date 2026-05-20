.class Lcom/miui/home/settings/MiuiHomeSettings$16;
.super Ljava/lang/Object;
.source "MiuiHomeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/settings/MiuiHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/MiuiHomeSettings;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/MiuiHomeSettings;)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1304
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isScreenCellsLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$1100(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    const v1, 0x7f10045c

    invoke-virtual {v0, v1}, Lcom/miui/home/settings/preference/ValuePreference;->setDisableTips(I)V

    .line 1306
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/miui/home/settings/preference/CheckBoxPreference;->setDisableTips(I)V

    return-void

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$100(Lcom/miui/home/settings/MiuiHomeSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1310
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {p0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$1200(Lcom/miui/home/settings/MiuiHomeSettings;)V

    return-void

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    invoke-static {v0}, Lcom/miui/home/settings/MiuiHomeSettings;->access$1100(Lcom/miui/home/settings/MiuiHomeSettings;)Lcom/miui/home/settings/preference/ValuePreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1314
    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings$16;->this$0:Lcom/miui/home/settings/MiuiHomeSettings;

    iget-object p0, p0, Lcom/miui/home/settings/MiuiHomeSettings;->mSearchBarSetting:Lcom/miui/home/settings/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
