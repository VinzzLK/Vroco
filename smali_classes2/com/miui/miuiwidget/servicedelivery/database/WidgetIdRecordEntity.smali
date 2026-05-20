.class public Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;
.super Ljava/lang/Object;
.source "WidgetIdRecordEntity.java"


# static fields
.field public static final APP_WIDGET_TYPE:I = 0x1

.field public static final COL_STATUS:Ljava/lang/String; = "status"

.field public static final COL_TYPE:Ljava/lang/String; = "type"

.field public static final COL_WIDGET_ID:Ljava/lang/String; = "widget_id"

.field public static final COL_WIDGET_SIGN:Ljava/lang/String; = "widget_sign"

.field public static final MAML_TYPE:I = 0x2

.field public static STATUS_DEFAULT:I = 0x0

.field public static STATUS_USING:I = 0x1


# instance fields
.field status:I

.field type:I

.field widgetId:I

.field widgetSign:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    .line 18
    iput p2, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->type:I

    .line 19
    iput-object p3, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetSign:Ljava/lang/String;

    .line 20
    iput p4, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    return-void
.end method


# virtual methods
.method public toCovertContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "widget_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetSign:Ljava/lang/String;

    const-string v2, "widget_sign"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetIdRecordEntity{widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", widgetSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->widgetSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/database/WidgetIdRecordEntity;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
