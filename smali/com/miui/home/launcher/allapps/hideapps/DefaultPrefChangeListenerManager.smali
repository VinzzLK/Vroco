.class Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;
.super Ljava/lang/Object;
.source "DefaultPrefChangeListenerManager.java"


# instance fields
.field private mChangedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public callOnSharedPreferenceChangeListener(Ljava/lang/String;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;

    .line 102
    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;->get()Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {v3, p1}, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;->dispatchChange(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerOnSharedPreferenceChangeListener(Ljava/lang/String;Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    new-instance p0, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;-><init>(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unRegisterOnSharedPreferenceChangeListener(Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/DefaultPrefChangeListenerManager;->mChangedListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 70
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 78
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;

    .line 80
    invoke-virtual {v3}, Lcom/miui/home/launcher/allapps/hideapps/OnWeakDefaultPrefChangeListener;->get()Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;

    move-result-object v3

    if-eqz v3, :cond_3

    if-ne v3, p1, :cond_2

    .line 82
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 90
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
