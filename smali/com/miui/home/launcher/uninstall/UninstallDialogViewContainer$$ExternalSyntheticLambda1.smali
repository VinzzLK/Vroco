.class public final synthetic Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer$$ExternalSyntheticLambda1;->f$2:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;->$r8$lambda$rvbaDuZsHdonp2x9x8i016MszN0(Lcom/miui/home/launcher/uninstall/UninstallDialogViewContainer;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
