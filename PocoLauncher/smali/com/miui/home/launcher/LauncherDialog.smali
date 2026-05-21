.class public abstract Lcom/miui/home/launcher/LauncherDialog;
.super Landroid/app/DialogFragment;
.source "LauncherDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static changeDialogStyle(Landroid/app/Dialog;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFlip()Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0701aa

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    move-object v4, p0

    check-cast v4, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v4, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_1

    int-to-float v6, v0

    .line 64
    invoke-virtual {v5, v3, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 66
    :cond_1
    invoke-virtual {v4, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_2

    int-to-float v6, v0

    .line 68
    invoke-virtual {v5, v3, v6}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    const/4 v5, -0x3

    .line 70
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_3

    int-to-float v0, v0

    .line 72
    invoke-virtual {v4, v3, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_3
    const v0, 0x7f0a011a

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingLeft(Landroid/view/View;I)V

    .line 78
    invoke-static {v0, v3}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingRight(Landroid/view/View;I)V

    .line 80
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherDialog;->onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    .line 28
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public abstract onCreateLauncherDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherDialog;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 49
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherDialog;->changeDialogStyle(Landroid/app/Dialog;)V

    return-void
.end method
