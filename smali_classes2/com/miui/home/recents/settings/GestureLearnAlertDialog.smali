.class public Lcom/miui/home/recents/settings/GestureLearnAlertDialog;
.super Ljava/lang/Object;
.source "GestureLearnAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;
    }
.end annotation


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mClickOnDialog:Z

.field private mClickPosButtonRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDialogDismissConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentAction:Ljava/lang/String;

.field private mIsAddNewTaskFlag:Z

.field private mIsGestureLearnButtonClicked:Z


# direct methods
.method public static synthetic $r8$lambda$5m6XA_MPefMnmQO2cOuTSXzOnv8(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->lambda$new$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PlgwKTQHmYnaJFt4oXxGHYQMxis(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->lambda$new$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dN0lp5__fYwVi9fDlRrP4XO1noc(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->lambda$new$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsGestureLearnButtonClicked:Z

    .line 26
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsAddNewTaskFlag:Z

    .line 29
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f100372

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    const v1, 0x7f100373

    .line 32
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    const v1, 0x7f100374

    .line 36
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/settings/GestureLearnAlertDialog;)V

    .line 39
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    .line 34
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsGestureLearnButtonClicked:Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->onDismiss()V

    return-void
.end method

.method private onDismiss()V
    .locals 4

    .line 65
    iget-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsGestureLearnButtonClicked:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->onPositiveButtonClicked()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mDialogDismissConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    .line 70
    new-instance v1, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;

    iget-boolean v2, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    iget-object v3, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;-><init>(ZZ)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsGestureLearnButtonClicked:Z

    return-void
.end method

.method private onPositiveButtonClicked()V
    .locals 3

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickOnDialog:Z

    .line 45
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    sget-boolean v1, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsAddNewTaskFlag:Z

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, 0x10800000

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GestureLearnAlertDialog"

    const-string v2, "GestureLearnAlertDialog positive button"

    .line 56
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickPosButtonRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public setClickDialogButtonConsume(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/miui/home/recents/settings/GestureLearnAlertDialog$DismissStatus;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mDialogDismissConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setClickPosButtonRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mClickPosButtonRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setIsAddNewTaskFlag(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIsAddNewTaskFlag:Z

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonIntentAction(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mIntentAction:Ljava/lang/String;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/miui/home/recents/settings/GestureLearnAlertDialog;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method
