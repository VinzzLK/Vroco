.class public final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;
.super Landroid/widget/FrameLayout;
.source "LauncherFolder2x2IconContainer.kt"


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final cellX:I

.field private final cellY:I

.field private mHeightMeasureSpec:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->_$_findViewCache:Ljava/util/Map;

    const/4 p2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellX:I

    .line 25
    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellY:I

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 40
    iget p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellX:I

    iget v0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->cellY:I

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 p2, 0x20

    shr-long v2, v0, p2

    long-to-int p2, v2

    long-to-int v0, v0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_0

    if-lt p2, p1, :cond_0

    move p2, p1

    .line 48
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p1

    sub-int/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    .line 49
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mWidthMeasureSpec:I

    .line 50
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mHeightMeasureSpec:I

    .line 51
    iget p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconContainer;->mWidthMeasureSpec:I

    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
