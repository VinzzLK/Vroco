.class public final synthetic Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

.field public final synthetic f$1:Lcom/xiaomi/dist/handoff/AppMeta;

.field public final synthetic f$2:Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

.field public final synthetic f$3:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/relay/RelayIconInRecents;Lcom/xiaomi/dist/handoff/AppMeta;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    iput-object p2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$1:Lcom/xiaomi/dist/handoff/AppMeta;

    iput-object p3, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$2:Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iput-object p4, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    iget-object v1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$1:Lcom/xiaomi/dist/handoff/AppMeta;

    iget-object v2, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$2:Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;

    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->$r8$lambda$9IyCe8H1qBXqCYJNmUZoax8FMEc(Lcom/miui/home/recents/relay/RelayIconInRecents;Lcom/xiaomi/dist/handoff/AppMeta;Lcom/xiaomi/dist/handoff/parcel/LocalHandoffTask;Landroid/graphics/Bitmap;)V

    return-void
.end method
