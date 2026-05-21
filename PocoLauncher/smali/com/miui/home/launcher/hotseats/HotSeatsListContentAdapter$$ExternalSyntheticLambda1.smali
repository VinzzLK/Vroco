.class public final synthetic Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/ItemIcon$ColorModeChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field public final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final onColorModeChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->$r8$lambda$DxeazDaGuuJTFC-H4JD6LvX-6yg(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;Lcom/miui/home/launcher/ShortcutIcon;Z)V

    return-void
.end method
