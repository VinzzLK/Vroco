.class public Lcom/miui/home/launcher/widget/WidgetCell;
.super Landroid/widget/RelativeLayout;
.source "WidgetCell.java"


# static fields
.field private static final BITMAP_MAX_SIZE_SCALE:F

.field private static final mTitleMaxLineInJap:Ljava/lang/Integer;


# instance fields
.field public mBadge:Landroid/widget/ImageView;

.field public mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

.field public mContext:Landroid/content/Context;

.field public mItemMore:Landroid/widget/ImageView;

.field public mItemPreview:Landroid/widget/ImageView;

.field public mItemTitle:Landroid/widget/TextView;

.field public mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

.field public mLinearLayout:Landroid/widget/LinearLayout;

.field private mRemoteView:Landroid/widget/RemoteViews;

.field public mSpan:Landroid/widget/TextView;

.field public mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;


# direct methods
.method public static synthetic $r8$lambda$vVIpIAEpctysR2j2Dk57NlV9edY(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/WidgetCell;->lambda$applyFromCellItem$0(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w7KFWz1xbEY0jPzbvF_hDJJc1gQ(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/widget/WidgetCell;->lambda$applyFromCellItem$1(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    :goto_0
    sput v0, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    const/4 v0, 0x5

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/widget/WidgetCell;->mTitleMaxLineInJap:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/WidgetCell;)Landroid/widget/RemoteViews;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mRemoteView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method private applyPreviewOnAppWidgetHostView(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 167
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_2

    .line 168
    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    .line 169
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/miui/launcher/views/LauncherWidgetHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/launcher/views/LauncherWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    .line 173
    iget-object v0, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    iput v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mRemoteView:Landroid/widget/RemoteViews;

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    .line 176
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->loadGeneratedPreview(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mRemoteView:Landroid/widget/RemoteViews;

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyPreviewOnAppWidgetHostView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetCell"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLauncherWidgetHostView:Lcom/miui/launcher/views/LauncherWidgetHostView;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, p1, v1}, Lcom/miui/home/launcher/widget/WidgetCell;->setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V

    :cond_2
    return-void
.end method

.method private getFillHeightOnJapDevice()I
    .locals 1

    .line 270
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070739

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyFromCellItem$0(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;IILjava/lang/Void;)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;
    .locals 0

    .line 115
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/WidgetPreviewLoader;->queryPreview(Lcom/miui/home/launcher/ItemInfo;II)Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$applyFromCellItem$1(Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V
    .locals 7

    .line 121
    iget-object p1, p1, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;->mItemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    if-nez p4, :cond_0

    .line 123
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object p2, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    iget-object v1, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    iget-boolean v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mIsShowDetails:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mContext:Landroid/content/Context;

    const v1, 0x7f0802e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/miui/home/launcher/widget/WidgetCell$1;

    invoke-direct {v0, p0, p4}, Lcom/miui/home/launcher/widget/WidgetCell$1;-><init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    iget-object v0, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget v2, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v3, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iget-object v5, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    iget-object v6, p4, Lcom/miui/home/launcher/WidgetPreviewLoader$QueryResult;->mPreview:Landroid/graphics/drawable/Drawable;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/widget/WidgetCell;->setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private loadGeneratedPreview(Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;)Landroid/widget/RemoteViews;
    .locals 9

    const-string v0, "WidgetCell"

    .line 186
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    .line 187
    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 190
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGeneratedPreview, provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-class v1, Landroid/widget/RemoteViews;

    const-string v2, "getWidgetPreview"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/ComponentName;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/UserHandle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    aput-object v5, v3, v6

    .line 197
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    aput-object p1, v3, v7

    .line 198
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    .line 191
    invoke-static {p0, v1, v2, v4, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "loadGeneratedPreview: "

    .line 201
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private setImageDrawable(IILandroid/graphics/Matrix;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p5, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 221
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070737

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 222
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070736

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eq p2, v1, :cond_2

    .line 223
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 224
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070738

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p2, p1

    .line 225
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 226
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    .line 227
    invoke-virtual {p3, v1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    sub-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    div-float/2addr p0, v1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p1, v2

    div-float/2addr p1, p2

    .line 228
    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_3
    int-to-float p0, p0

    .line 231
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 232
    invoke-virtual {p3, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 234
    :goto_0
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 235
    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setItemLayout()V
    .locals 3

    .line 239
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_SB_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_KDDI_BUILD:Z

    if-nez v0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 244
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getFillHeightOnJapDevice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->setTitleLayout()V

    .line 247
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->setSpanLayout()V

    return-void
.end method

.method private setSpanLayout()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getFillHeightOnJapDevice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v1, 0x10

    .line 264
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 265
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setTitleLayout()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 252
    sget-object v1, Lcom/miui/home/launcher/widget/WidgetCell;->mTitleMaxLineInJap:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->getFillHeightOnJapDevice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 256
    iget-object p0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method applyFromCellItem(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Landroid/graphics/Matrix;Lcom/miui/home/launcher/WidgetPreviewLoader;)V
    .locals 7

    .line 103
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/WidgetCell;->applyPreviewOnAppWidgetHostView(Lcom/miui/home/launcher/ItemInfo;)V

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100543

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f10008c

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f070737

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/miui/home/launcher/widget/WidgetCell;->BITMAP_MAX_SIZE_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const v3, 0x7f070736

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 113
    new-instance v2, Lcom/miui/home/launcher/widget/WidgetCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, p1, v1, v0}, Lcom/miui/home/launcher/widget/WidgetCell$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/WidgetPreviewLoader;Lcom/miui/home/launcher/ItemInfo;II)V

    new-instance p4, Lcom/miui/home/launcher/widget/WidgetCell$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/miui/home/launcher/widget/WidgetCell$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/widget/WidgetCell;Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter$ViewHolder;Lcom/miui/home/launcher/ItemInfo;Landroid/graphics/Matrix;)V

    const/4 p0, 0x0

    invoke-static {v2, p4, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a022b

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0228

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemPreview:Landroid/widget/ImageView;

    const v0, 0x7f0a022a

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mSpan:Landroid/widget/TextView;

    const v0, 0x7f0a0222

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mBadge:Landroid/widget/ImageView;

    const v0, 0x7f0a0426

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/widget/WidgetDetailsView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mWidgetDetailsView:Lcom/miui/home/launcher/widget/WidgetDetailsView;

    const v0, 0x7f0a0226

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0227

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mItemMore:Landroid/widget/ImageView;

    .line 87
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/WidgetCell;->setItemLayout()V

    return-void
.end method

.method public setAppWidgetHostViewPreview(Lcom/miui/launcher/views/LauncherWidgetHostView;Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;Landroid/widget/RemoteViews;)V
    .locals 0

    const/4 p0, 0x2

    .line 210
    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->setImportantForAccessibility(I)V

    .line 211
    iget-object p0, p2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, p0}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 212
    invoke-virtual {p1, p3}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public setWidgetDetailsCallback(Lcom/miui/home/launcher/widget/WidgetDetailsCallback;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/miui/home/launcher/widget/WidgetCell;->mClickCallBack:Lcom/miui/home/launcher/widget/WidgetDetailsCallback;

    return-void
.end method
