.class public final synthetic Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContent$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContent;

    check-cast p1, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContent;->$r8$lambda$UXP2JhM3EjOgLYCukUpF_kyBRGE(Lcom/miui/home/launcher/hotseats/HotSeatsListContent;Lcom/miui/home/launcher/IShortcutIcon;)V

    return-void
.end method
