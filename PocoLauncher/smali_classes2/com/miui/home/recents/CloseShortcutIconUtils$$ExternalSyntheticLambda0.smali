.class public final synthetic Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/miui/home/recents/CloseShortcutIconUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Landroid/content/ComponentName;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/miui/home/recents/CloseShortcutIconUtils;->$r8$lambda$UO8VyqCEg8-Uxv4HO0OlNaguvPM(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/ComponentName;Ljava/util/List;)V

    return-void
.end method
