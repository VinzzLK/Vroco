.class public final Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;
.super Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;
.source "MamlWidgetItem.java"


# instance fields
.field public downloadUrl:Ljava/lang/String;

.field public fileSizeKb:I

.field public layoutStyle:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public resPath:Ljava/lang/String;

.field public spanX:I

.field public spanY:I

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 15
    invoke-direct {p0, v0}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;-><init>(I)V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->downloadUrl:Ljava/lang/String;

    const-string v0, "2x2"

    .line 9
    iput-object v0, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->layoutStyle:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;-><init>(I)V

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->downloadUrl:Ljava/lang/String;

    const-string p1, "2x2"

    .line 9
    iput-object p1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->layoutStyle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MamlWidgetItem{productId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", implUniqueCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->implUniqueCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->resPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fileSizeKb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->fileSizeKb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downloadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", layoutStyle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->layoutStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/MamlWidgetItem;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lightPreviewUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->lightPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", darkPreviewUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->darkPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->widgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/miuiwidget/servicedelivery/model/WidgetItem;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
