.class public Lcom/miui/home/launcher/graphics/IconPalette;
.super Ljava/lang/Object;
.source "IconPalette.java"


# static fields
.field private static colorFilters:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3avY9bxSEY6XxeCU2bS4vtTgW1c(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$3(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3qFejSoNU3VO19nmpU4K4Xj4GC0(I[F)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$setupIconColorType$7(I[F)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HHzCfou5mCq5_B6A0zxuJnMsBwI(I[F)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$setupIconColorTypeSync$9(I[F)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RYuyS_8OoNHe-jyVfG323k9MNL8(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$setupIconColorType$6(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VmASnrTRMbrW24LinbU81wNGiDQ(Ljava/util/List;Ljava/util/List;)Lio/reactivex2/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$5(Ljava/util/List;Ljava/util/List;)Lio/reactivex2/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XQ9nnOVN6TqKYVa6970K2eHvPsI(Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$0(Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e7N6uAL6GInHrWJYwvSVkWpvf0M(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$2(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mNFUE6n0AwNkeC8vl9LGawU0-zY(Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$setupIconColorType$8(Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n1WKzwQSS_CvFK4_XH1iDA6p2hM(Lcom/miui/home/launcher/AppInfo;)Lio/reactivex2/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$4(Lcom/miui/home/launcher/AppInfo;)Lio/reactivex2/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q5WuedSJTQ3w_F3GIHozdTooTis(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$1(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    return-void
.end method

.method private static argb(FIII)I
    .locals 0

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static getAndSetAppColorType(Lcom/miui/home/launcher/ShortcutInfo;Landroidx/palette/graphics/Palette;)V
    .locals 12

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 179
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lez v2, :cond_f

    .line 181
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/palette/graphics/Palette$Swatch;

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v4}, Landroidx/palette/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    .line 184
    aget v7, v6, v1

    const/high16 v8, 0x41e00000    # 28.0f

    cmpg-float v7, v7, v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-lez v7, :cond_5

    aget v7, v6, v1

    const/high16 v11, 0x43a00000    # 320.0f

    cmpl-float v7, v7, v11

    if-lez v7, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    aget v7, v6, v1

    cmpl-float v7, v7, v8

    const/high16 v8, 0x42960000    # 75.0f

    if-lez v7, :cond_2

    aget v7, v6, v1

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    move v2, v10

    goto :goto_2

    .line 188
    :cond_2
    aget v7, v6, v1

    cmpl-float v7, v7, v8

    const/high16 v8, 0x43340000    # 180.0f

    if-lez v7, :cond_3

    aget v7, v6, v1

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    move v2, v5

    goto :goto_2

    .line 190
    :cond_3
    aget v5, v6, v1

    cmpl-float v5, v5, v8

    const/high16 v7, 0x437a0000    # 250.0f

    if-lez v5, :cond_4

    aget v5, v6, v1

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    .line 192
    :cond_4
    aget v5, v6, v1

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    aget v5, v6, v1

    cmpg-float v5, v5, v11

    if-gtz v5, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v9

    .line 195
    :cond_6
    :goto_2
    aget v5, v6, v10

    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_7

    aget v5, v6, v9

    const/high16 v7, 0x3e800000    # 0.25f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    :cond_7
    move v2, v3

    .line 198
    :cond_8
    aget v5, v6, v10

    const v6, 0x3f4ccccd    # 0.8f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    move v2, v1

    .line 201
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    add-int/2addr v5, v4

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 205
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroidx/palette/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 214
    :cond_b
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    move v4, v2

    move v6, v4

    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_c

    .line 216
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v4, :cond_d

    move v6, v1

    move v2, v4

    move v1, v7

    move v4, v8

    goto :goto_3

    :cond_d
    if-lt v8, v2, :cond_c

    move v6, v7

    move v2, v8

    goto :goto_3

    :cond_e
    if-ne v1, v3, :cond_10

    mul-int/2addr v2, v5

    if-le v2, v4, :cond_10

    move v1, v6

    goto :goto_4

    :cond_f
    move v1, v3

    .line 235
    :cond_10
    :goto_4
    sget-object p1, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_11
    check-cast p0, Lcom/miui/home/launcher/AppInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/BaseAppInfo;->setIconColorType(Ljava/lang/Integer;)V

    return-void
.end method

.method private static getColorFiltersFromStorage(Ljava/util/List;)Ljava/util/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "ColorFilter"

    const-string v1, "getColorFiltersFromStorage"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/miui/home/launcher/graphics/IconPalette;->resetColorFilter()V

    .line 73
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 74
    invoke-virtual {v0}, Lcom/miui/home/launcher/BaseAppInfo;->getIconColorType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-static {v0}, Lcom/miui/home/launcher/graphics/IconPalette;->setupIconColorType(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    return-object p0
.end method

.method public static getColorItemAllDrawableId()I
    .locals 5

    .line 242
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getDrawerTransparencyType()I

    move-result v0

    .line 243
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    const v2, 0x7f0801c9

    const v3, 0x7f0801ca

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 245
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v4, :cond_0

    const v2, 0x7f0801cb

    goto :goto_1

    :cond_0
    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    goto :goto_1

    :cond_2
    const v1, 0x7f0801c7

    if-eqz v0, :cond_4

    .line 256
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v1

    if-nez v1, :cond_5

    if-ne v0, v4, :cond_3

    const v2, 0x7f0801c8

    goto :goto_1

    :cond_3
    if-le v0, v4, :cond_5

    goto :goto_0

    :cond_4
    move v2, v1

    :cond_5
    :goto_1
    return v2
.end method

.method private static handleWithDrawable(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Bitmap;
    .locals 5

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    check-cast p0, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 166
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 167
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 168
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 169
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private static synthetic lambda$setupIconColorType$6(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->handleWithDrawable(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setupIconColorType$7(I[F)Z
    .locals 2

    const/4 p0, 0x2

    .line 139
    aget v0, p1, p0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    aget p0, p1, p0

    const p1, 0x3d4ccccd    # 0.05f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setupIconColorType$8(Lcom/miui/home/launcher/AppInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->handleWithDrawable(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->clearFilters()Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda0;

    .line 139
    invoke-virtual {v0, v1}, Landroidx/palette/graphics/Palette$Builder;->addFilter(Landroidx/palette/graphics/Palette$Filter;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v0

    .line 141
    invoke-static {p0, v0}, Lcom/miui/home/launcher/graphics/IconPalette;->getAndSetAppColorType(Lcom/miui/home/launcher/ShortcutInfo;Landroidx/palette/graphics/Palette;)V

    return-void
.end method

.method private static synthetic lambda$setupIconColorTypeSync$9(I[F)Z
    .locals 2

    const/4 p0, 0x2

    .line 150
    aget v0, p1, p0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    aget p0, p1, p0

    const p1, 0x3d4ccccd    # 0.05f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateAllAppsColorType$0(Lcom/miui/home/launcher/AppInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppInfo cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$updateAllAppsColorType$1(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/BaseAppInfo;->getIconColorType()Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static synthetic lambda$updateAllAppsColorType$2(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 104
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->setupIconColorTypeSync(Lcom/miui/home/launcher/AppInfo;)V

    .line 106
    invoke-interface {p1, p0}, Lio/reactivex2/Emitter;->onNext(Ljava/lang/Object;)V

    .line 107
    invoke-interface {p1}, Lio/reactivex2/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$updateAllAppsColorType$3(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda9;-><init>(Lcom/miui/home/launcher/AppInfo;Lio/reactivex2/ObservableEmitter;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/home/launcher/ShortcutInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$updateAllAppsColorType$4(Lcom/miui/home/launcher/AppInfo;)Lio/reactivex2/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/AppInfo;)V

    invoke-static {v0}, Lio/reactivex2/Observable;->create(Lio/reactivex2/ObservableOnSubscribe;)Lio/reactivex2/Observable;

    move-result-object p0

    .line 109
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->io()Lio/reactivex2/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->setupIconColorTypeSync(Lcom/miui/home/launcher/AppInfo;)V

    .line 112
    invoke-static {p0}, Lio/reactivex2/Observable;->just(Ljava/lang/Object;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateAllAppsColorType$5(Ljava/util/List;Ljava/util/List;)Lio/reactivex2/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 120
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->getColorFiltersFromStorage(Ljava/util/List;)Ljava/util/TreeSet;

    move-result-object p0

    goto :goto_0

    .line 122
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    .line 124
    :goto_0
    invoke-static {p0}, Lio/reactivex2/Observable;->just(Ljava/lang/Object;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static resetColorFilter()V
    .locals 2

    .line 66
    sget-object v0, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 67
    sget-object v0, Lcom/miui/home/launcher/graphics/IconPalette;->colorFilters:Ljava/util/TreeSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setColorAlpha(IF)I
    .locals 3

    .line 275
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 276
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 277
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 278
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    .line 279
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/graphics/IconPalette;->argb(FIII)I

    move-result p0

    return p0
.end method

.method public static setupIconColorType(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 130
    check-cast p0, Lcom/miui/home/launcher/AppInfo;

    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/BaseAppInfo;->setIconColorType(Ljava/lang/Integer;)V

    .line 133
    invoke-static {p0}, Lio/reactivex2/Observable;->just(Ljava/lang/Object;)Lio/reactivex2/Observable;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda7;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda7;

    .line 134
    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->filter(Lio/reactivex2/functions/Predicate;)Lio/reactivex2/Observable;

    move-result-object p0

    .line 135
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda4;

    .line 136
    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method private static setupIconColorTypeSync(Lcom/miui/home/launcher/AppInfo;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/IconPalette;->handleWithDrawable(Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->clearFilters()Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda1;

    .line 150
    invoke-virtual {v0, v1}, Landroidx/palette/graphics/Palette$Builder;->addFilter(Landroidx/palette/graphics/Palette$Filter;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object v0

    .line 152
    invoke-static {p0, v0}, Lcom/miui/home/launcher/graphics/IconPalette;->getAndSetAppColorType(Lcom/miui/home/launcher/ShortcutInfo;Landroidx/palette/graphics/Palette;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateAllAppsColorType(Ljava/util/List;)Lio/reactivex2/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)",
            "Lio/reactivex2/Observable<",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-static {v0}, Lio/reactivex2/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex2/Observable;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda3;

    .line 89
    invoke-virtual {p0, v1}, Lio/reactivex2/Observable;->doOnNext(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/Observable;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda8;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda8;

    .line 95
    invoke-virtual {p0, v1}, Lio/reactivex2/Observable;->filter(Lio/reactivex2/functions/Predicate;)Lio/reactivex2/Observable;

    move-result-object p0

    sget-object v1, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda6;->INSTANCE:Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda6;

    .line 99
    invoke-virtual {p0, v1}, Lio/reactivex2/Observable;->flatMap(Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lio/reactivex2/Observable;->toList()Lio/reactivex2/Single;

    move-result-object p0

    .line 116
    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex2/Single;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Single;

    move-result-object p0

    new-instance v1, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/graphics/IconPalette$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0, v1}, Lio/reactivex2/Single;->flatMapObservable(Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;

    move-result-object p0

    .line 126
    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method
