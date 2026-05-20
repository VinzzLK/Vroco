.class public Lcom/miui/maml/util/MamlAccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "MamlAccessHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MamlAccessHelper"


# instance fields
.field private mHostViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRootRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ScreenElementRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ps_X4MXlzynV31dby9QMyN1K9gw(Lcom/miui/maml/util/MamlAccessHelper;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/util/MamlAccessHelper;->lambda$performAccessibilityAction$0(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V
    .locals 1

    .line 29
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostViewRef:Ljava/lang/ref/WeakReference;

    .line 32
    iget-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$performAccessibilityAction$0(Landroid/view/View;II)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 3

    .line 54
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 58
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 59
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 72
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .line 131
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return p3

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p0

    if-ltz p1, :cond_2

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 137
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/AnimatedScreenElement;

    const-string p1, "up"

    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 139
    instance-of p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;

    if-eqz p1, :cond_1

    .line 140
    check-cast p0, Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->onActionUp()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return p3
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p0

    if-ltz p1, :cond_0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 86
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 87
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 94
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    const-string v0, ""

    const-string v1, "MamlAccessHelper"

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getAccessibleElements()Ljava/util/List;

    move-result-object p0

    if-ltz p1, :cond_3

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 98
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 99
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element.getContentDescription() == null "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 104
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getTriggers()Lcom/miui/maml/CommandTriggers;

    move-result-object p1

    .line 107
    instance-of v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    const-string v0, "up"

    .line 109
    invoke-virtual {p1, v0}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "down"

    .line 110
    invoke-virtual {p1, v0}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_1
    const/16 p1, 0x10

    .line 111
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 113
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    move-result v2

    .line 114
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result p0

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 118
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtualViewId not found "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    const-string p0, "mRoot == null, add an empty content description"

    .line 123
    invoke-static {v1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public performAccessibilityAction(II)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mHostViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/miui/maml/util/MamlAccessHelper$$ExternalSyntheticLambda0;-><init>(Lcom/miui/maml/util/MamlAccessHelper;Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeRoot()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/maml/util/MamlAccessHelper;->mRootRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->clearMamlAccessHelper()V

    :cond_0
    return-void
.end method
