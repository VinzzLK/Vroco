.class Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;
.super Ljava/lang/Object;
.source "BaseAllAppsSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;->this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 330
    iget-object p1, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;->this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    invoke-static {p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->access$100(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Lcom/miui/home/settings/preference/ListPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/settings/BaseAllAppsSettingsFragment$3;->this$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    invoke-static {p0}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->access$000(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
