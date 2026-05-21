.class public Lmiuix/androidbasewidget/widget/ClearableEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;,
        Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field private mShown:Z

.field private mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a9

    aput v2, v0, v1

    .line 35
    sput-object v0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    sget v0, Lmiuix/androidbasewidget/R$attr;->clearableEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    .line 60
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    .line 61
    aget-object p1, p1, p2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    invoke-direct {p1, p0, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    .line 64
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setForceDarkAllowed(Z)V

    .line 69
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 71
    iget-boolean p3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move p1, v0

    :cond_0
    if-eq p3, p1, :cond_1

    .line 72
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 73
    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 76
    :cond_1
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/androidbasewidget/widget/ClearableEditText;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 34
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    .locals 0

    .line 34
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    return-object p0
.end method

.method private dispatchWidgetTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 132
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 134
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    .line 136
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    int-to-float v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 140
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 144
    :cond_2
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    return v1
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    if-eqz p1, :cond_3

    .line 202
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    if-eqz p1, :cond_3

    .line 188
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V

    .line 189
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    return v0

    .line 195
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    if-eqz p1, :cond_3

    .line 196
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    .line 205
    :cond_3
    :goto_0
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    return p0
.end method

.method private onClearButtonClick()V
    .locals 2

    const-string v0, ""

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->dispatchWidgetTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 159
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    .line 161
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v0

    .line 165
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    .line 178
    invoke-super {p0}, Landroid/widget/EditText;->jumpDrawablesToCurrentState()V

    .line 179
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 150
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 151
    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    if-nez p0, :cond_0

    .line 152
    sget-object p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/EditText;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 108
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mTextWatcher:Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 82
    const-class p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 89
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    .line 92
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    .line 93
    invoke-virtual {p0}, Landroid/widget/EditText;->refreshDrawableState()V

    :cond_1
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 122
    iput-object p3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
