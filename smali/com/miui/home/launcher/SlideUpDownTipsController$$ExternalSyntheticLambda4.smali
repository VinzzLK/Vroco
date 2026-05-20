.class public final synthetic Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/SlideUpDownTipsController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SlideUpDownTipsController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/SlideUpDownTipsController;

    iput-boolean p2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/SlideUpDownTipsController;

    iget-boolean p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda4;->f$1:Z

    invoke-static {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/SlideUpDownTipsController;->$r8$lambda$nRkVZVn5JGbWRXoTJkseOgErJ_Y(Lcom/miui/home/launcher/SlideUpDownTipsController;ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
