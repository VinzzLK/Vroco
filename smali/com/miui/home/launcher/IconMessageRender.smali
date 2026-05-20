.class public Lcom/miui/home/launcher/IconMessageRender;
.super Ljava/lang/Object;
.source "IconMessageRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IconMessageRender$DrawParams;
    }
.end annotation


# static fields
.field public static final ITEM_MESSAGE_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/ItemIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_MESSAGE_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/ItemIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/miui/home/launcher/IconMessageRender$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotScale"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/IconMessageRender$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/IconMessageRender;->MESSAGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 38
    new-instance v0, Lcom/miui/home/launcher/IconMessageRender$2;

    const-string v3, "dotAlpha"

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/IconMessageRender$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/IconMessageRender;->MESSAGE_ALPHA_PROPERTY:Landroid/util/Property;

    .line 52
    new-instance v0, Lcom/miui/home/launcher/IconMessageRender$3;

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/IconMessageRender$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/IconMessageRender;->ITEM_MESSAGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 66
    new-instance v0, Lcom/miui/home/launcher/IconMessageRender$4;

    invoke-direct {v0, v1, v3}, Lcom/miui/home/launcher/IconMessageRender$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/IconMessageRender;->ITEM_MESSAGE_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawIconMessageBitmap(Landroid/graphics/Canvas;Lcom/miui/home/launcher/IconMessageRender$DrawParams;FF)V
    .locals 0

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget p0, p2, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->scale:F

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    iget-object p0, p2, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->mPaint:Landroid/graphics/Paint;

    .line 108
    iget p3, p2, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->alpha:F

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    iget-object p3, p2, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->messageBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$000(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result p4

    neg-int p4, p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$200(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result p2

    neg-int p2, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p4, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/home/launcher/IconMessageRender$DrawParams;I)V
    .locals 4

    .line 86
    iget-object v0, p2, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->messageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p2, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 91
    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$000(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$100(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 92
    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$200(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$100(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 93
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    .line 94
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float p3, p3

    .line 96
    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$000(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    sub-float/2addr p3, v2

    const/4 v2, 0x0

    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 97
    invoke-static {p2}, Lcom/miui/home/launcher/IconMessageRender$DrawParams;->access$200(Lcom/miui/home/launcher/IconMessageRender$DrawParams;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v0, v3

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v1, p3

    add-float/2addr v0, v2

    .line 99
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/miui/home/launcher/IconMessageRender;->drawIconMessageBitmap(Landroid/graphics/Canvas;Lcom/miui/home/launcher/IconMessageRender$DrawParams;FF)V

    return-void
.end method
