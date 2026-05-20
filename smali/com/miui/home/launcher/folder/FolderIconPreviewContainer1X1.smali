.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;
.super Landroid/widget/LinearLayout;
.source "FolderIconPreviewContainer1X1.kt"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    }
.end annotation


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

.field private isHandleMeasured:Z

.field private mInFolderSheet:Z

.field private mItemIconHeight:I

.field private mItemIconWidth:I

.field private mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;


# direct methods
.method public static synthetic $r8$lambda$4btEzHLMFAhAwH978-qAee00Pvw(ILcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons$lambda-1(ILcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7L2f7JqT-X2hVg4QacKXaKifgTs(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons$lambda-0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->_$_findViewCache:Ljava/util/Map;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    .line 73
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMItemIcons$p(Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-object p0
.end method

.method private static final loadItemIcons$lambda-0(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "$si"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set icon for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preview drawable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewDisappear"

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image view alpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/util/TempLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    :goto_0
    iget-object v0, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object v0, v0, p2

    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->refreshIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object p3, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object p3, p3, p2

    invoke-virtual {p3, p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 127
    iget-object p0, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz p0, :cond_2

    .line 128
    iget-object p0, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method private static final loadItemIcons$lambda-1(ILcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Ljava/lang/Void;)V
    .locals 2

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object p2, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length p2, p2

    :goto_0
    if-ge p0, p2, :cond_0

    .line 137
    iget-object v0, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aget-object v0, v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateItemIconSize()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewWidth()I

    move-result v0

    .line 153
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewHeight()I

    move-result v1

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewItemPadding()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 155
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIconWidth:I

    sub-int/2addr v1, v2

    .line 156
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIconHeight:I

    return-void
.end method

.method public final getItemViews()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-object p0
.end method

.method public final loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V
    .locals 12

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v9, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 101
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    array-length v3, v3

    if-ge v9, v3, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    .line 103
    :cond_0
    iget v3, v10, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v1

    .line 105
    :goto_1
    new-instance v11, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;

    move-object v3, v11

    move-object v4, v10

    move-object v5, p0

    move-object v6, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$loadItemIcons$1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;Lcom/miui/home/launcher/IconCache;ZI)V

    new-instance v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v10, p0, v9}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;I)V

    invoke-static {v11, v3, v10, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_2
    new-instance p1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v9, p0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$$ExternalSyntheticLambda0;-><init>(ILcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;)V

    invoke-static {p1, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->doUIConsumerSerialized(Ljava/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    const v1, 0x7f0a0219

    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.launcher.folder.FolderIconPreviewContainer1X1.PreviewIconView"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v3, 0x7f0a021a

    .line 79
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const v3, 0x7f0a021b

    .line 80
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const v3, 0x7f0a021c

    .line 81
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const v3, 0x7f0a021d

    .line 82
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const v3, 0x7f0a021e

    .line 83
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const v3, 0x7f0a021f

    .line 84
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const v3, 0x7f0a0220

    .line 85
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const v3, 0x7f0a0221

    .line 86
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    aput-object v3, v0, v1

    .line 77
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mItemIcons:[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->isHandleMeasured:Z

    if-nez v0, :cond_1

    .line 50
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mInFolderSheet:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p1

    .line 51
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result v0

    .line 55
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewWidth()I

    move-result p1

    .line 60
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderPreviewHeight()I

    move-result v0

    .line 64
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 70
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public final setInFolderSheet()V
    .locals 1

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->mInFolderSheet:Z

    return-void
.end method
