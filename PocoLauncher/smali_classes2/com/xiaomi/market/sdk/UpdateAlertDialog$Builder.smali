.class public Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;
.super Ljava/lang/Object;
.source "UpdateAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/market/sdk/UpdateAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private negativeButtonTextId:I

.field private negativeListener:Landroid/view/View$OnClickListener;

.field private positiveButtonTextId:I

.field private positiveListener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method private isGestureLineShow(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    move p0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return p0
.end method


# virtual methods
.method public setMessage(Ljava/lang/String;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;
    .locals 0

    .line 137
    iput p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->negativeButtonTextId:I

    .line 138
    iput-object p2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->negativeListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;
    .locals 0

    .line 143
    iput p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->positiveButtonTextId:I

    .line 144
    iput-object p2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->positiveListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public show()Lcom/xiaomi/market/sdk/UpdateAlertDialog;
    .locals 4

    .line 149
    new-instance v0, Lcom/xiaomi/market/sdk/UpdateAlertDialog;

    iget-object v1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->negativeButtonTextId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->negativeListener:Landroid/view/View$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->positiveButtonTextId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->positiveListener:Landroid/view/View$OnClickListener;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/market/sdk/UpdateAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x50

    .line 157
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const v2, 0x106000d

    .line 158
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 159
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->isGestureLineShow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/xiaomi/market/sdk/R$dimen;->update_dialog_margin_bottom_with_gesture:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/market/sdk/UpdateAlertDialog$Builder;->context:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/xiaomi/market/sdk/R$dimen;->update_dialog_margin_bottom_without_gesture:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method
