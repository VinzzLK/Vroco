.class public abstract Lcom/miui/home/launcher/gadget/ClearButton;
.super Lcom/miui/home/launcher/gadget/Gadget;
.source "ClearButton.java"

# interfaces
.implements Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;


# static fields
.field private static sIsSony:Z


# instance fields
.field private mAnimationExecutionTime:I

.field protected mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

.field private mContentBody:Landroid/view/View;

.field private mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

.field private mIsPaused:Z

.field private mLabel:Lcom/miui/home/launcher/TitleTextView;

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mPreUsedMemory:I

.field private mProgessAnimator:Landroid/animation/ObjectAnimator;

.field private mProgress:I

.field private mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

.field private mTitleContainer:Landroid/view/ViewGroup;

.field private mTotalMemory:I


# direct methods
.method public static synthetic $r8$lambda$bs9swCNZmD1jGY1wDWfu_mcRHd8(Lcom/miui/home/launcher/gadget/ClearButton;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->lambda$refreshMemoryUsed$0(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kQHxh6T2a2S7ruc41c474sR2LSU(Lcom/miui/home/launcher/gadget/ClearButton;Landroid/animation/Animator$AnimatorListener;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ClearButton;->lambda$refreshMemoryUsed$1(Landroid/animation/Animator$AnimatorListener;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "LT26i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LT18i"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/miui/home/launcher/gadget/ClearButton;->sIsSony:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/Gadget;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Lcom/miui/home/launcher/gadget/ClearButton$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/ClearButton$1;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshAndSchedue()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->execClear()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/gadget/ClearButton;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/gadget/ClearButton;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/gadget/ClearButton;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/gadget/ClearButton;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/gadget/ClearButton;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->startSchedule()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/gadget/ClearButton;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->getFreeMemory()I

    move-result p0

    return p0
.end method

.method private execClear()V
    .locals 4

    .line 144
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    if-eqz v0, :cond_1

    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->stopSchedule()V

    .line 156
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mPreUsedMemory:I

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->doClear()V

    .line 159
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    sget-boolean v1, Lcom/miui/home/launcher/gadget/ClearButton;->sIsSony:Z

    if-nez v1, :cond_2

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x55

    if-eq v1, v2, :cond_2

    .line 161
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTitleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 162
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/gadget/ClearButton$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClearButton$3;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getFormatedMemory(JZ)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_2

    const-wide/16 v0, 0x400

    cmp-long p2, p0, v0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    float-to-int p1, p0

    int-to-float p1, p1

    cmpl-float p1, p0, p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    .line 252
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "%.0fG"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 254
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "%.1fG"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFreeMemory()I
    .locals 4

    .line 243
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private synthetic lambda$refreshMemoryUsed$0(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->getFreeMemory()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refreshMemoryUsed$1(Landroid/animation/Animator$AnimatorListener;Ljava/lang/Integer;)V
    .locals 3

    .line 220
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    mul-int/lit8 p2, v0, 0x64

    .line 221
    iget v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    div-int/2addr p2, v1

    .line 222
    iget v2, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    if-eq p2, v2, :cond_0

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private refreshAndSchedue()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshMemoryUsed(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->startSchedule()V

    return-void
.end method

.method private setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 264
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->stopProgressAnimator()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 265
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    .line 266
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mAnimationExecutionTime:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_0

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startSchedule()V
    .locals 3

    .line 230
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopProgressAnimator()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopSchedule()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mRefreshAndScheduleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLabel(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x64

    .line 201
    iget v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    div-int/2addr p1, v0

    .line 202
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method abstract doClear()V
.end method

.method public getProgress()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    return p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method abstract initClearIcon()V
.end method

.method public invalidateViewWhenEditModeChange()Landroid/view/View;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    return-object p0
.end method

.method public needReset()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAdded()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 63
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTotalMemory:I

    .line 64
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0d006a

    invoke-static {v0, v1, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a00f4

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTopPadding()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a0204

    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mTitleContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a00ab

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/LauncherIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    .line 69
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->loadClearBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00f5

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/common/ClearIconImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    const v0, 0x7f0a0203

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/TitleTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 77
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/ClearIconImageView;->getAnimationExecutionTime()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mAnimationExecutionTime:I

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    new-instance v1, Lcom/miui/home/launcher/gadget/ClearButton$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/gadget/ClearButton$2;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->initClearIcon()V

    return-void
.end method

.method public onDeleted()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onEditDisable()V
    .locals 0

    return-void
.end method

.method public onEditNormal()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIsPaused:Z

    .line 105
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->stopSchedule()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIsPaused:Z

    .line 99
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/ClearButton;->refreshAndSchedue()V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    const v1, 0x7f1103c8

    const v2, 0x7f1103cb

    invoke-static {v0, p0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    return-void
.end method

.method protected refreshMemoryUsed(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 217
    new-instance v0, Lcom/miui/home/launcher/gadget/ClearButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/ClearButton$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;)V

    new-instance v1, Lcom/miui/home/launcher/gadget/ClearButton$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/gadget/ClearButton$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/gadget/ClearButton;Landroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method protected setButtonAniamtor(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/gadget/ClearButton;->setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public abstract synthetic setIsAutoLayoutAnimating(Z)V
.end method

.method public setIsDrawingInScreenPreview(Z)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->setIsDrawingInScreenPreview(Z)V

    :cond_0
    return-void
.end method

.method public setIsHideTitle(Z)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mLabel:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mProgress:I

    .line 286
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;->updateLabel(I)V

    .line 287
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/Gadget;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordGadgetAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->invalidateBindElementWhenLauncherInEditMode()V

    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTopPadding()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    .line 302
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mContentBody:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 301
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 303
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 304
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/ClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
