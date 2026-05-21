.class final Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;
.super Lkotlin/jvm/internal/Lambda;
.source "NavShortcutConfigManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/gesture/NavShortcutConfigManager;->parseSettingEntries(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/miui/home/recents/gesture/SettingEntry;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;

    invoke-direct {v0}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;-><init>()V

    sput-object v0, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;->INSTANCE:Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/miui/home/recents/gesture/SettingEntry;)Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lcom/miui/home/recents/gesture/SettingEntry;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 248
    check-cast p1, Lcom/miui/home/recents/gesture/SettingEntry;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/gesture/NavShortcutConfigManager$parseSettingEntries$3;->invoke(Lcom/miui/home/recents/gesture/SettingEntry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
