.class public final Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;
.super Ljava/lang/Object;
.source "PreviewIconClickDelegate.kt"


# instance fields
.field private li:Lcom/miui/home/launcher/folder/ListenerInfo;

.field private mDownX:F

.field private mDownY:F

.field private mIsDelegateClick:Z

.field private mIsMoved:Z

.field private final mOnClickListener$delegate:Lkotlin/Lazy;

.field private mTimeStampTouchDown:J

.field private final mTouchSLop:I

.field private final mUserPressThreshold:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTimeStampTouchDown:J

    const-wide/16 v0, 0x12c

    .line 19
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mUserPressThreshold:J

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTouchSLop:I

    .line 24
    new-instance v0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate$mOnClickListener$2;-><init>(Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mOnClickListener$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mOnClickListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private final preformClickInternal(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/folder/ListenerInfo;->onViewClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final delegateViewClick(Lcom/miui/home/launcher/folder/FolderPreviewIconView;Lcom/miui/home/launcher/folder/ListenerInfo;)V
    .locals 0

    .line 34
    iput-object p2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->isEnable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->getMOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final getLi()Lcom/miui/home/launcher/folder/ListenerInfo;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    return-object p0
.end method

.method public final hasViewClickListeners()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->li:Lcom/miui/home/launcher/folder/ListenerInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onSendAccessibilityEvent(ILcom/miui/home/launcher/folder/FolderPreviewIconView;)V
    .locals 1

    const-string v0, "previewIconView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 46
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->preformClickInternal(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    :cond_0
    return-void
.end method

.method public final onViewTouchEvent(Landroid/view/MotionEvent;Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewIconView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsDelegateClick:Z

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mDownX:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 62
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsMoved:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTouchSLop:I

    int-to-float v2, v0

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_2

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    .line 63
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsMoved:Z

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTimeStampTouchDown:J

    sub-long/2addr v0, v2

    .line 68
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsMoved:Z

    if-nez p1, :cond_5

    iget-wide v2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mUserPressThreshold:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->hasViewClickListeners()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 69
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->preformClickInternal(Lcom/miui/home/launcher/folder/FolderPreviewIconView;)V

    goto :goto_0

    .line 54
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mTimeStampTouchDown:J

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mDownX:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mDownY:F

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/PreviewIconClickDelegate;->mIsMoved:Z

    :cond_5
    :goto_0
    return-void
.end method
