.class public final synthetic Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field public final synthetic f$1:Lcom/miui/home/launcher/maml/Theme;

.field public final synthetic f$2:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field public final synthetic f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/Theme;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$1:Lcom/miui/home/launcher/maml/Theme;

    iput-object p3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$2:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput-object p4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$1:Lcom/miui/home/launcher/maml/Theme;

    iget-object v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$2:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda6;->f$3:Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->$r8$lambda$IjBbHo2sAakRbwvmL-xWqpiBTzQ(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/Theme;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method
