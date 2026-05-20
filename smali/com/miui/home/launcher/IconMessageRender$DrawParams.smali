.class public Lcom/miui/home/launcher/IconMessageRender$DrawParams;
.super Ljava/lang/Object;
.source "IconMessageRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/IconMessageRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawParams"
.end annotation


# static fields
.field private static UP_MAX_DIGIT:Ljava/lang/String; = "999+"


# instance fields
.field private HEIGHT_PADDING:I

.field private final MAX_DIGIT:I

.field private MIN_HEIGHT:I

.field private WIDTH_PADDING:I

.field public alpha:F

.field private height:I

.field public iconBounds:Landroid/graphics/Rect;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mMessagePaint:Landroid/graphics/Paint;

.field public mPaint:Landroid/graphics/Paint;

.field public messageBitmap:Landroid/graphics/Bitmap;

.field private outDistance:I

.field private radius:I

.field public scale:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->scale:F

    .line 116
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->alpha:F

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->radius:I

    const/4 v0, 0x2

    .line 124
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->HEIGHT_PADDING:I

    const/16 v0, 0xc

    .line 125
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->WIDTH_PADDING:I

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->iconBounds:Landroid/graphics/Rect;

    const/16 v0, 0x3e7

    .line 127
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->MAX_DIGIT:I

    .line 133
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->width:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->outDistance:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->height:I

    return p0
.end method

.method private createCirclePatch()Landroid/graphics/Path;
    .locals 10

    .line 187
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 188
    iget v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->width:I

    iget v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->height:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v9, 0x0

    move-object v0, v8

    move v1, v2

    move v2, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 189
    iget p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->height:I

    int-to-float v3, p0

    int-to-float v4, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 190
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    return-object v8
.end method

.method private init()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mCirclePaint:Landroid/graphics/Paint;

    .line 140
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mCirclePaint:Landroid/graphics/Paint;

    const v2, 0x7f06011d

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42200000    # 40.0f

    .line 145
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    const v2, 0x7f06011c

    invoke-virtual {v0, v2}, Landroid/app/Application;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    .line 150
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mPaint:Landroid/graphics/Paint;

    .line 152
    :cond_2
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->radius:I

    mul-int/lit8 v0, v0, 0x2

    .line 153
    iput v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->MIN_HEIGHT:I

    return-void
.end method


# virtual methods
.method public createMessageBitmap(Ljava/lang/String;)V
    .locals 6

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e7

    if-le v0, v1, :cond_0

    .line 164
    sget-object p1, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->UP_MAX_DIGIT:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 168
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 169
    iget v2, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->MIN_HEIGHT:I

    iget v3, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->HEIGHT_PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->height:I

    int-to-float v1, v1

    .line 170
    iget-object v2, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->WIDTH_PADDING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->width:I

    .line 171
    iget v2, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->messageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->messageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    invoke-direct {p0}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->createCirclePatch()Landroid/graphics/Path;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 177
    iget v2, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public resetMessageBitmap()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->messageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setMessageSize(F)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mMessagePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setOutDistance(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->outDistance:I

    return-void
.end method
