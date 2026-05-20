.class public Lcom/miui/home/launcher/ExtendedEditText;
.super Landroid/widget/EditText;
.source "ExtendedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 64
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/ExtendedEditText;->mBackKeyListener:Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    return-void
.end method

.method public setOnBackKeyListener(Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/ExtendedEditText;->mBackKeyListener:Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;

    return-void
.end method
