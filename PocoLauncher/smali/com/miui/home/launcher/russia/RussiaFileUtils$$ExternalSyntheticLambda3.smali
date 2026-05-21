.class public final synthetic Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;->f$0:Ljava/util/Map;

    iget-object p0, p0, Lcom/miui/home/launcher/russia/RussiaFileUtils$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/russia/RussiaFileUtils;->$r8$lambda$qhHSq1Ai-nNUleVLc4dC3S462GY(Ljava/util/Map;Ljava/util/List;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
