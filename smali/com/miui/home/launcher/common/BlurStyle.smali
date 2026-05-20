.class public Lcom/miui/home/launcher/common/BlurStyle;
.super Ljava/lang/Object;
.source "BlurStyle.java"


# instance fields
.field private blendColors:[I

.field private blurRadius:I

.field private blurScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurRadius:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurScale:F

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    return-void
.end method

.method public varargs constructor <init>(IF[I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurRadius:I

    .line 12
    iput p2, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurScale:F

    .line 13
    iput-object p3, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    return-void
.end method


# virtual methods
.method public getBlendColors()[I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    return-object p0
.end method

.method public getBlurRadius()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurRadius:I

    return p0
.end method

.method public getBlurScale()F
    .locals 0

    .line 45
    iget p0, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurScale:F

    return p0
.end method

.method public getStyleWithProgress(F)Lcom/miui/home/launcher/common/BlurStyle;
    .locals 5

    .line 17
    new-instance v0, Lcom/miui/home/launcher/common/BlurStyle;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/BlurStyle;-><init>()V

    .line 18
    iget v1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurRadius:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/miui/home/launcher/common/BlurStyle;->blurRadius:I

    .line 19
    iget v1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurScale:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/miui/home/launcher/common/BlurStyle;->blurScale:F

    .line 20
    iget-object v1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 21
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 24
    iget-object v3, v0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    iget-object v4, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    aget v4, v4, v2

    invoke-static {v4, p1}, Lcom/miui/home/launcher/common/BlurUtilities;->multiplyAlphaWithColor(IF)I

    move-result v4

    aput v4, v3, v2

    goto :goto_1

    .line 26
    :cond_0
    iget-object v3, v0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    iget-object v4, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    aget v4, v4, v2

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurStyleInfo{blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blurScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/launcher/common/BlurStyle;->blurScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", blendColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/common/BlurStyle;->blendColors:[I

    .line 61
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
