.class final Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavShortcutConfigManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->loadAppConfigToList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/miui/home/recents/gesture/ConfigItem;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;

    invoke-direct {v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/miui/home/recents/gesture/ConfigItem;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/ConfigItem;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p1, Lcom/miui/home/recents/gesture/ConfigItem;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$loadAppConfigToList$1;->invoke(Lcom/miui/home/recents/gesture/ConfigItem;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
