.class public Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;
.super Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;
.source "SmallServiceDeliveryNewUIAdapter.java"


# instance fields
.field public final SERVICE_DELIVERY_CONTAINER_HEIGHT:F

.field public final SERVICE_DELIVERY_CONTAINER_WIDTH:F

.field public final SERVICE_DELIVERY_HEIGHT:F

.field public final SERVICE_DELIVERY_INDICATOR_PADDING_H:F

.field public final SERVICE_DELIVERY_INDICATOR_PADDING_V:F

.field public final SERVICE_DELIVERY_INDICATOR_WIDTH:F

.field public final SERVICE_DELIVERY_WIDTH:F

.field public final SMALL_SERVICE_DELIVERY_PADDING:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_WIDTH:F

    .line 11
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_HEIGHT:F

    .line 15
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_CONTAINER_WIDTH:F

    .line 16
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_CONTAINER_HEIGHT:F

    const v0, 0x3d051eb8    # 0.0325f

    .line 20
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_INDICATOR_WIDTH:F

    const/high16 v0, 0x3d000000    # 0.03125f

    .line 25
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_INDICATOR_PADDING_H:F

    const v0, 0x3ccccccd    # 0.025f

    .line 26
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SERVICE_DELIVERY_INDICATOR_PADDING_V:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 30
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryNewUIAdapter;->SMALL_SERVICE_DELIVERY_PADDING:F

    return-void
.end method


# virtual methods
.method public getContainerHeight()I
    .locals 1

    .line 48
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 43
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorPaddingH()I
    .locals 1

    .line 63
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const/high16 v0, 0x3d000000    # 0.03125f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorPaddingV()I
    .locals 1

    .line 68
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3ccccccd    # 0.025f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorWidth()I
    .locals 1

    .line 73
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d051eb8    # 0.0325f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getPadding()I
    .locals 1

    .line 38
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryHeight(I)I
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryWidth(I)I
    .locals 0

    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getStyle()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
