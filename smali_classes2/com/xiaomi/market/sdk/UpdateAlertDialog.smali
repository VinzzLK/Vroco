.class public Lcom/xiaomi/market/sdk/UpdateAlertDialog;
.super Landroid/app/AlertDialog;
.source "UpdateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/CharSequence;

.field private messageView:Landroid/widget/TextView;

.field private negativeButton:Landroid/widget/Button;

.field private negativeButtonListener:Landroid/view/View$OnClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private positiveButton:Landroid/widget/Button;

.field private positiveButtonListener:Landroid/view/View$OnClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaomi/market/sdk/R$layout;->update_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 78
    sget v0, Lcom/xiaomi/market/sdk/R$id;->title_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->titleView:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/xiaomi/market/sdk/R$id;->message_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->messageView:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/xiaomi/market/sdk/R$id;->positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButton:Landroid/widget/Button;

    .line 81
    sget v0, Lcom/xiaomi/market/sdk/R$id;->negative_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButton:Landroid/widget/Button;

    .line 84
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->titleView:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->messageView:Landroid/widget/TextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButton:Landroid/widget/Button;

    new-instance v0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$1;-><init>(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButton:Landroid/widget/Button;

    new-instance v0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$2;-><init>(Lcom/xiaomi/market/sdk/UpdateAlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iput-object p2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    .line 55
    iput-object p3, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButtonListener:Landroid/view/View$OnClickListener;

    .line 56
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->positiveButton:Landroid/widget/Button;

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 62
    :cond_1
    iput-object p2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p3, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButtonListener:Landroid/view/View$OnClickListener;

    .line 64
    iget-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->negativeButton:Landroid/widget/Button;

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->message:Ljava/lang/CharSequence;

    .line 46
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->messageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->title:Ljava/lang/CharSequence;

    .line 37
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->titleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
