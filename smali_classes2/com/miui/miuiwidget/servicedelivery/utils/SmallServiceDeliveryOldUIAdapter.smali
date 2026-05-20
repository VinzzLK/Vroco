.class public Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;
.super Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;
.source "SmallServiceDeliveryOldUIAdapter.java"


# instance fields
.field public final SERVICE_DELIVERY_CONTAINER_HEIGHT:F

.field public final SERVICE_DELIVERY_CONTAINER_WIDTH:F

.field public final SERVICE_DELIVERY_HEIGHT:F

.field public final SERVICE_DELIVERY_INDICATOR_PADDING_H:F

.field public final SERVICE_DELIVERY_INDICATOR_PADDING_V:F

.field public final SERVICE_DELIVERY_INDICATOR_WIDTH:F

.field public final SERVICE_DELIVERY_PADDING:F

.field public final SERVICE_DELIVERY_WIDTH:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryUIAdapter;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 7
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_WIDTH:F

    .line 8
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_HEIGHT:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_CONTAINER_WIDTH:F

    .line 13
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_CONTAINER_HEIGHT:F

    const v0, 0x3cb851eb    # 0.022499999f

    .line 17
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_INDICATOR_WIDTH:F

    const v0, 0x3d828f5c    # 0.06375f

    .line 22
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_INDICATOR_PADDING_H:F

    const v0, 0x3ccccccd    # 0.025f

    .line 23
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_INDICATOR_PADDING_V:F

    const v0, 0x3d4ccccd    # 0.05f

    .line 27
    iput v0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/SmallServiceDeliveryOldUIAdapter;->SERVICE_DELIVERY_PADDING:F

    return-void
.end method


# virtual methods
.method public getContainerHeight()I
    .locals 1

    .line 45
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getContainerWidth()I
    .locals 1

    .line 40
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorPaddingH()I
    .locals 1

    .line 60
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d828f5c    # 0.06375f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorPaddingV()I
    .locals 1

    .line 65
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3ccccccd    # 0.025f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getIndicatorWidth()I
    .locals 1

    .line 70
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3cb851eb    # 0.022499999f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getPadding()I
    .locals 1

    .line 35
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryHeight()I
    .locals 1

    .line 55
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalHeight:I

    int-to-float p0, p0

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryHeight(I)I
    .locals 0

    int-to-float p0, p1

    const p1, 0x3f666666    # 0.9f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryWidth()I
    .locals 1

    .line 50
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/utils/ServiceDeliveryUIAdapter;->totalWidth:I

    int-to-float p0, p0

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getServiceDeliveryWidth(I)I
    .locals 0

    int-to-float p0, p1

    const p1, 0x3f666666    # 0.9f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getStyle()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
