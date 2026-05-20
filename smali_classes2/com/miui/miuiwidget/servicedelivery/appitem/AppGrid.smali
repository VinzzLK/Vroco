.class public Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;
.super Landroid/widget/LinearLayout;
.source "AppGrid.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppGrid"


# instance fields
.field private appItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundExecutor:Ljava/util/concurrent/Executor;

.field private colCount:I

.field private final iconLoader:Lcom/miui/miuiwidget/servicedelivery/appitem/AppIconLoader;

.field private initialized:Z

.field private isReceiverRegister:Z

.field private final itemClickListener:Landroid/view/View$OnClickListener;

.field private layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private rowCount:I

.field private tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;


# direct methods
.method public static synthetic $r8$lambda$0YFW44rFEN6MnS9C4b5hjVJOtgE(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Landroid/widget/ImageView;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$setAppIconData$8(Landroid/widget/ImageView;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ZOSbwdBlTKQQy-T-0e9UVaKKvg(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$setAppIconData$7(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ASb8x355jkYOjWTlURf_5hUtyVg(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$onDataSetChanged$1(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXalD6vLQBCXud67OAOUIUtwJtw(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$setAppIconData$6(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VbwY8j1gOQ0mvqJZxoIfzx3sS0s(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$onAppChanged$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a_5x2mr-kuL7vpJ71B2zO9xhwq8(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$onAppChanged$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$bV5X0AIhDxa0PzcOAdNn8Lr7cWc(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$onDataSetChanged$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$briDIgK1G8Ql9-xKJpG2b0Dc5h8(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$onDataSetChanged$3(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jGQQYLF7ik1a7PMWkE9eYBZKWfk(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$setAppIconData$5(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lNTHYTfUfsBzw-9QTL6ynf-W1JU(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$setAppIconData$4(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvzPTEGbNHFxJgz2hEPq0johY_s(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$onAppChanged$9(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xseNiPwwwHYEl31i88-Z8Qci0Lw(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->lambda$initializeGrid$0(IILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->rowCount:I

    .line 42
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->colCount:I

    .line 43
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->initialized:Z

    .line 48
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppIconLoader;

    invoke-direct {v1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppIconLoader;-><init>()V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->iconLoader:Lcom/miui/miuiwidget/servicedelivery/appitem/AppIconLoader;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    .line 54
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$1;

    invoke-direct {v1, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$1;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V

    iput-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->isReceiverRegister:Z

    .line 245
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$2;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V

    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->itemClickListener:Landroid/view/View$OnClickListener;

    .line 68
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->onAppChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    return-object p0
.end method

.method private addCol(ILandroid/widget/LinearLayout;I)V
    .locals 2

    .line 168
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-direct {p0, v0, p1, p3}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->setColLayoutParams(Landroid/widget/ImageView;II)V

    .line 170
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addRow(II)Landroid/widget/LinearLayout;
    .locals 2

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->setRowLayoutParams(Landroid/widget/LinearLayout;II)V

    .line 163
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getItemViewAt(II)Landroid/widget/ImageView;
    .locals 0

    .line 174
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method private initializeGrid(II)V
    .locals 1

    .line 122
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda10;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;II)V

    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->traversal(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private isAppInSameScreen(Ljava/lang/String;IZ)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 315
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsAtScreen(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 317
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 319
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/LauncherContentProviderHelper;->getAppsInDocker(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private synthetic lambda$initializeGrid$0(IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 123
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p3, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->addRow(II)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 127
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->addCol(ILandroid/widget/LinearLayout;I)V

    return-void
.end method

.method private synthetic lambda$onAppChanged$10()V
    .locals 1

    .line 305
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda9;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V

    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->traversal(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$onAppChanged$11(Ljava/lang/String;)V
    .locals 7

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 273
    :goto_0
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 274
    iget-object v3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    if-nez v3, :cond_1

    goto :goto_1

    .line 276
    :cond_1
    iget-object v3, v3, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    .line 277
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 287
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 290
    :goto_3
    sget-object v4, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->BUILT_IN_APP_ITEMS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    .line 291
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    .line 292
    iget-object v4, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 293
    :cond_5
    iget-object v4, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->checkInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    move v2, v5

    goto :goto_3

    .line 294
    :cond_6
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppChanged replace index:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", packageName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppGrid"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v2, v5

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    return-void

    .line 304
    :cond_8
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda4;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onAppChanged$9(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->setAppIconData(Ljava/util/List;II)V

    return-void
.end method

.method private synthetic lambda$onDataSetChanged$1(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 188
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->setAppIconData(Ljava/util/List;II)V

    return-void
.end method

.method private synthetic lambda$onDataSetChanged$2(Ljava/util/List;)V
    .locals 1

    .line 187
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda11;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->traversal(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$onDataSetChanged$3(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V
    .locals 3

    .line 184
    :try_start_0
    new-instance v0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->rowCount:I

    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->colCount:I

    mul-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;-><init>(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v1}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->screenIndex()I

    move-result v1

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    invoke-interface {v2}, Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;->isFoldDevice()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppFilter;->getResult(Landroid/content/Context;IZZ)Ljava/util/List;

    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    .line 186
    new-instance p2, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda8;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AppGrid"

    const-string p2, "onDataSetChanged "

    .line 192
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setAppIconData$4(Landroid/widget/ImageView;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/miuiwidget/R$drawable;->app_item_icon_placeholder:I

    .line 210
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic lambda$setAppIconData$5(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$setAppIconData$6(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static synthetic lambda$setAppIconData$7(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setAppIconData$8(Landroid/widget/ImageView;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V
    .locals 3

    .line 216
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/miuiwidget/servicedelivery/utils/PackageUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda3;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 220
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->iconLoader:Lcom/miui/miuiwidget/servicedelivery/appitem/AppIconLoader;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->packageName:Ljava/lang/String;

    iget-object p2, p2, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;->localIconPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppIconLoader;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    .line 226
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 227
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 228
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 229
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-eqz p3, :cond_0

    if-ne v1, v2, :cond_0

    if-eqz v2, :cond_0

    if-ge p3, v2, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/utils/IconScaleUtils;->scaleIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 233
    new-instance p3, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda2;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 235
    :cond_0
    new-instance p3, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawable == null, index : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppGrid"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onAppChanged(Ljava/lang/String;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda7;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->isReceiverRegister:Z

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    .line 101
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->isReceiverRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "AppGrid"

    const-string v1, "registerReceiver"

    .line 107
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private setAppIconData(Ljava/util/List;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "AppGrid"

    .line 200
    :try_start_0
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->colCount:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p3

    .line 201
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/miuiwidget/servicedelivery/model/AppItem;

    .line 202
    invoke-direct {p0, p2, p3}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->getItemViewAt(II)Landroid/widget/ImageView;

    move-result-object p2

    if-nez p2, :cond_0

    .line 204
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setAppIconData, imageView == null, index : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAppIconData, appItem == null, index : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance p1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 215
    :cond_1
    iget-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda5;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Landroid/widget/ImageView;Lcom/miui/miuiwidget/servicedelivery/model/AppItem;I)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 239
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onDataSetChanged"

    .line 241
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setColLayoutParams(Landroid/widget/ImageView;II)V
    .locals 2

    .line 152
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-lez p2, :cond_0

    .line 155
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 157
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setRowLayoutParams(Landroid/widget/LinearLayout;II)V
    .locals 2

    .line 143
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 144
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-lez p2, :cond_0

    .line 146
    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 148
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private traversal(Ljava/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 260
    :goto_0
    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->rowCount:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 261
    :goto_1
    iget v3, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->colCount:I

    if-ge v2, v3, :cond_0

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->isReceiverRegister:Z

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->isReceiverRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterReceiver: mReceiver, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppGrid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAppItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/miuiwidget/servicedelivery/model/AppItem;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->appItems:Ljava/util/List;

    return-object p0
.end method

.method public getColCount()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->colCount:I

    return p0
.end method

.method public getRowCount()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->rowCount:I

    return p0
.end method

.method public init(IIIILcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->initialized:Z

    .line 85
    iput-object p6, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->tracker:Lcom/miui/miuiwidget/servicedelivery/track/ServiceDeliveryTracker;

    .line 86
    iput-object p5, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->layoutHost:Lcom/miui/miuiwidget/servicedelivery/view/ServiceDeliveryLayoutHost;

    .line 87
    iput-object p7, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 88
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->rowCount:I

    .line 89
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->colCount:I

    .line 90
    invoke-direct {p0, p3, p4}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->initializeGrid(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 324
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 325
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->registerReceiver()V

    return-void
.end method

.method public onDataSetChanged(Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid$$ExternalSyntheticLambda6;-><init>(Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;Lcom/miui/miuiwidget/servicedelivery/model/AppItemDataSet;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 330
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 331
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->unRegisterReceiver()V

    return-void
.end method

.method public updateItemSpacing(II)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 132
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 134
    invoke-direct {p0, v2, v1, p2}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->setRowLayoutParams(Landroid/widget/LinearLayout;II)V

    move v3, v0

    .line 135
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 136
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 137
    invoke-direct {p0, v4, v3, p1}, Lcom/miui/miuiwidget/servicedelivery/appitem/AppGrid;->setColLayoutParams(Landroid/widget/ImageView;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
