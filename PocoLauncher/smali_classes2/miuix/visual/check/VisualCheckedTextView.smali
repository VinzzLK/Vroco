.class public Lmiuix/visual/check/VisualCheckedTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VisualCheckedTextView.java"

# interfaces
.implements Lmiuix/visual/check/VisualCheckItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;
    }
.end annotation


# static fields
.field private static CHECKED_STATE:[I

.field private static UNCHECKED_STATE:[I


# instance fields
.field private iCheckedStateStyle:Lmiuix/animation/IStateStyle;

.field private iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

.field private mChecked:Z

.field private mCheckedColor:I

.field private mColorProperty:Lmiuix/animation/property/ColorProperty;

.field private mListener:Lmiuix/animation/listener/TransitionListener;

.field private mTextColorId:I

.field private mUncheckedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 47
    sput-object v1, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    new-array v0, v0, [I

    const v1, -0x10100a0

    aput v1, v0, v3

    .line 48
    sput-object v0, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 78
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    sget-object v1, Lmiuix/visual/check/VisualCheckedTextView;->UNCHECKED_STATE:[I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/visualcheck/R$color;->visual_check_textview_unchecked_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    sget-object v1, Lmiuix/visual/check/VisualCheckedTextView;->CHECKED_STATE:[I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/visualcheck/R$color;->visual_check_textview_checked_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    .line 81
    new-instance v0, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;

    invoke-direct {v0, p0}, Lmiuix/visual/check/VisualCheckedTextView$InnerTransitionListener;-><init>(Lmiuix/visual/check/VisualCheckedTextView;)V

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    .line 82
    new-instance v0, Lmiuix/animation/property/ColorProperty;

    const-string v1, "checkedTextView"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ColorProperty;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    const-string v0, "text_color_checked"

    .line 83
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const-string v1, "text_color_unchecked"

    .line 84
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 85
    invoke-static {v3}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/16 v5, 0x1

    invoke-interface {v0, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 86
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    .line 87
    invoke-direct {p0, p1, p2}, Lmiuix/visual/check/VisualCheckedTextView;->initTextColorId(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initTextColorId(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    sget-object v0, Lmiuix/visualcheck/R$styleable;->TextAppearance:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    sget p2, Lmiuix/visualcheck/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mTextColorId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mTextColorId:I

    :goto_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mChecked:Z

    return p0
.end method

.method public onChecked(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mChecked:Z

    if-eqz p1, :cond_0

    .line 123
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onVisualCheckBoxTouchEvent(Lmiuix/visual/check/VisualCheckBox;Landroid/view/MotionEvent;)V
    .locals 5

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    .line 107
    invoke-virtual {p0}, Lmiuix/visual/check/VisualCheckedTextView;->isChecked()Z

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iCheckedStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v4, v3, v1

    iget v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v3, p2, v1

    iget v1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object p0, p2, v2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lmiuix/visual/check/VisualCheckedTextView;->iUnCheckedStateStyle:Lmiuix/animation/IStateStyle;

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v4, v3, v1

    iget v4, p0, Lmiuix/visual/check/VisualCheckedTextView;->mCheckedColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/visual/check/VisualCheckedTextView;->mColorProperty:Lmiuix/animation/property/ColorProperty;

    aput-object v3, p2, v1

    iget v1, p0, Lmiuix/visual/check/VisualCheckedTextView;->mUncheckedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object p0, p0, Lmiuix/visual/check/VisualCheckedTextView;->mListener:Lmiuix/animation/listener/TransitionListener;

    aput-object p0, p2, v2

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_1
    :goto_0
    return-void
.end method
