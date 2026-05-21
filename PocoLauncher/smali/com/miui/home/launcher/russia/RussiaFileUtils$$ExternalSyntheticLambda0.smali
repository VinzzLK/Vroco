.class public final synthetic Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;ZJLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$1:Z

    iput-wide p3, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$1:Z

    iget-wide v2, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Landroid/content/ContentValues;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->$r8$lambda$AXAr9ZxHjfTG9r7NhxGhf6ffdWI(Ljava/util/Map;ZJLjava/util/List;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
