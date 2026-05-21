.class public Lcom/miui/home/launcher/TransitionEffectMenuDialog;
.super Lcom/miui/home/launcher/LauncherDialog;
.source "TransitionEffectMenuDialog.java"


# instance fields
.field private mDismissNotUserDefaulted:Z

.field private mIsShow:Z

.field private mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherDialog;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mDismissNotUserDefaulted:Z

    return-void
.end method

.method private saveSelectedMode()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->saveSelectedMode()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mIsShow:Z

    return p0
.end method

.method public onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 19
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d017b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    iput-object p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    .line 20
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f110007

    invoke-direct {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    .line 21
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1002d8

    .line 22
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mIsShow:Z

    .line 38
    iget-boolean v0, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mDismissNotUserDefaulted:Z

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->saveSelectedMode()V

    .line 41
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mDismissNotUserDefaulted:Z

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mTransitionMenu:Lcom/miui/home/launcher/TransitionEffectThumbnailView;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->prepareToShow()V

    :cond_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mIsShow:Z

    return-void
.end method

.method public setTransitionEffectMenuDialogUserDefaultCurrent()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->mDismissNotUserDefaulted:Z

    .line 50
    invoke-direct {p0}, Lcom/miui/home/launcher/TransitionEffectMenuDialog;->saveSelectedMode()V

    return-void
.end method
