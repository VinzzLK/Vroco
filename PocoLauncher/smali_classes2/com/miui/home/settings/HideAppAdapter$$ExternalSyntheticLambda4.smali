.class public final synthetic Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/settings/HideAppAdapter;

.field public final synthetic f$1:Lcom/miui/home/launcher/AppInfo;

.field public final synthetic f$2:Landroid/widget/CompoundButton;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;Landroid/widget/CompoundButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/settings/HideAppAdapter;

    iput-object p2, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/launcher/AppInfo;

    iput-object p3, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;->f$2:Landroid/widget/CompoundButton;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/settings/HideAppAdapter;

    iget-object v1, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/launcher/AppInfo;

    iget-object p0, p0, Lcom/miui/home/settings/HideAppAdapter$$ExternalSyntheticLambda4;->f$2:Landroid/widget/CompoundButton;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/settings/HideAppAdapter;->$r8$lambda$N0sw2_0-wlYPDdutlieP4PV6nf0(Lcom/miui/home/settings/HideAppAdapter;Lcom/miui/home/launcher/AppInfo;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
