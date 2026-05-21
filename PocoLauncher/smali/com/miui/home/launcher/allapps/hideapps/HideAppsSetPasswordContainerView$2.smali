.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;
.super Ljava/lang/Object;
.source "HideAppsSetPasswordContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private passwordInProgressLocal(Landroid/text/Editable;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$200(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1002b9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 182
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getDetectedPassword(Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->NeedToConfirm:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ConfirmWrong:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->Introduction:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceTooShort:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    if-ne v0, v1, :cond_5

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->PASSWORD_MIN_LENGTH:I

    if-ge v0, v1, :cond_2

    .line 156
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceTooShort:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    goto :goto_1

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$102(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->FirstChoiceValid:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    goto :goto_1

    .line 146
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ChoiceConfirmed:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    goto :goto_1

    .line 152
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    sget-object p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;->ConfirmWrong:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;->updateStage(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$Stage;)V

    :cond_5
    :goto_1
    return-void

    .line 147
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "null chose pattern in stage \'need to confirm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPatternDrawEnd()V
    .locals 0

    return-void
.end method

.method public onPatternDrawStart()V
    .locals 0

    return-void
.end method

.method public passwordInProgress(Landroid/text/Editable;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$2;->passwordInProgressLocal(Landroid/text/Editable;)V

    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    return-void
.end method
