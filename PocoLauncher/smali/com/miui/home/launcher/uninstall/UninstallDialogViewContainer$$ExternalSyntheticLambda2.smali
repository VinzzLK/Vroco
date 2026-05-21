.class public final synthetic Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

.field public final synthetic f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public final synthetic f$2:Landroid/view/LayoutInflater;

.field public final synthetic f$3:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$2:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$3:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$1:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$2:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda2;->f$3:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->$r8$lambda$veHfzFec2Ru-9WamMpsI-4VedBg(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/view/LayoutInflater;Lcom/miui/home/launcher/ShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
