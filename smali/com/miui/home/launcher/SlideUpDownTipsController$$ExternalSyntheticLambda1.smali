.class public final synthetic Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/SlideUpDownTipsController;

.field public final synthetic f$1:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SlideUpDownTipsController;Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/SlideUpDownTipsController;

    iput-object p2, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    iput-boolean p3, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/SlideUpDownTipsController;

    iget-object v1, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;

    iget-boolean p0, p0, Lcom/miui/home/launcher/SlideUpDownTipsController$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/SlideUpDownTipsController;->$r8$lambda$MKDYL4Q2xX907SFiR2qw3WAjUCE(Lcom/miui/home/launcher/SlideUpDownTipsController;Lcom/miui/home/launcher/SlideUpDownTipsController$ICallBack;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
