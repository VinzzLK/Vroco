.class public abstract enum Lcom/miui/home/launcher/allapps/AllAppsColorMode;
.super Ljava/lang/Enum;
.source "AllAppsColorMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/home/launcher/allapps/AllAppsColorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field public static final enum DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field public static final enum LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field public static final enum SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->LIGHT:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 36
    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode$2;

    const-string v3, "DARK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->DARK:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 56
    new-instance v3, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;

    const-string v5, "SYSTEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/home/launcher/allapps/AllAppsColorMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->SYSTEM:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 15
    sput-object v5, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->$VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/miui/home/launcher/allapps/AllAppsColorMode$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 15
    const-class v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object p0
.end method

.method public static values()[Lcom/miui/home/launcher/allapps/AllAppsColorMode;
    .locals 1

    .line 15
    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->$VALUES:[Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    invoke-virtual {v0}, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    return-object v0
.end method


# virtual methods
.method public getAppCustomTextViewColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 233
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06005a

    .line 234
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f06005b

    .line 236
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getAppSelectInputHintColor(Landroid/content/Context;I)I
    .locals 0

    .line 266
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06005f

    .line 267
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f06005e

    .line 269
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getAppSelectInputLineColor(Landroid/content/Context;I)I
    .locals 0

    .line 274
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060061

    .line 275
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060060

    .line 277
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getAppSelectInputTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 225
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06006a

    .line 226
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0606d3

    .line 228
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getAppTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 85
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060032

    .line 86
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060031

    .line 88
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getAppsBackground(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 249
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_2

    if-ne p3, v0, :cond_0

    const p0, 0x7f08029b

    goto :goto_0

    :cond_0
    const p0, 0x7f0802a2

    .line 250
    :goto_0
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 253
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-object p0

    :cond_2
    if-ne p3, v0, :cond_3

    const p0, 0x7f08029a

    goto :goto_1

    :cond_3
    const p0, 0x7f0802a1

    .line 257
    :goto_1
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 259
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    return-object p0
.end method

.method public getBackBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    .line 241
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppsBackground(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundColor(Landroid/content/Context;I)I
    .locals 0

    .line 77
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060664

    .line 78
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060663

    .line 80
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getCategoryIndicatorColor(Landroid/content/Context;I)I
    .locals 2

    int-to-float v0, p2

    const/high16 v1, 0x42fd0000    # 126.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 210
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0603f7

    .line 211
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f0603e9

    .line 213
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 216
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f060081

    .line 217
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7f060080

    .line 219
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getCategoryTitleNormalColor(Landroid/content/Context;I)I
    .locals 0

    .line 201
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06007e

    .line 202
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f06007d

    .line 204
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getDividerColor(Landroid/content/Context;I)I
    .locals 0

    .line 109
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060034

    .line 110
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060033

    .line 112
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getEditIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 320
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 321
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080292

    goto :goto_0

    :cond_0
    const p0, 0x7f080291

    :goto_0
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 323
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f080290

    goto :goto_1

    :cond_2
    const p0, 0x7f08028f

    :goto_1
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFastScrollerPopupDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 336
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 337
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080297

    .line 338
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f080295

    .line 340
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 342
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f080296

    .line 343
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f080294

    .line 345
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPreviewBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPreviewDesc(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getPreviewImage(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p3, :cond_1

    .line 174
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0806fd

    .line 175
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0806fb

    .line 177
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 180
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0806fc

    .line 181
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f0806fa

    .line 183
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 93
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060029

    .line 94
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060028

    .line 96
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getRecycleViewCardBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 307
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0801bb

    .line 308
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p0, 0x7f0801ba

    .line 310
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 314
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-object p0
.end method

.method public getSaveBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x2

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppsBackground(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getScrollerTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 117
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060038

    .line 118
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060037

    .line 120
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getSearchBarBackgroundResource(I)I
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0801a7

    return p0

    :cond_0
    const p0, 0x7f0801a6

    return p0
.end method

.method public getSearchBarIconTintColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    .line 133
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060670

    .line 134
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f06066f

    .line 136
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarInputClearColor(Landroid/content/Context;I)I
    .locals 0

    .line 157
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0600f3

    .line 158
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f0600f2

    .line 160
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getSearchBarInputHintColor(Landroid/content/Context;I)I
    .locals 0

    .line 149
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06066e

    .line 150
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f06066d

    .line 152
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getSearchBarInputTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 141
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060674

    .line 142
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f060673

    .line 144
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 165
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0806bf

    .line 166
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f0806be

    .line 168
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryTextColor(Landroid/content/Context;I)I
    .locals 0

    .line 101
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06002c

    .line 102
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f06002b

    .line 104
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getSettingButtonColor(Landroid/content/Context;I)I
    .locals 0

    .line 193
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060030

    .line 194
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f06002f

    .line 196
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getSettingsDrawable(Landroid/content/Context;I)I
    .locals 0

    .line 328
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f06011b

    .line 329
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f06011a

    .line 331
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getTextClearIconResource(I)I
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08029f

    return p0

    :cond_0
    const p0, 0x7f08029e

    return p0
.end method

.method public getTitleEditTextBackgroundResource(I)I
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080219

    return p0

    :cond_0
    const p0, 0x7f080218

    return p0
.end method

.method public getTitleTextBackgroundResource(I)I
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080216

    return p0

    :cond_0
    const p0, 0x7f080217

    return p0
.end method

.method public getZeroMaskContainerDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 350
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08019c

    .line 351
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f08019d

    .line 353
    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public abstract isLightMode(I)Z
.end method
