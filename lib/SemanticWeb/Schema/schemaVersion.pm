use utf8;

package SemanticWeb::Schema::schemaVersion;

# ABSTRACT: Indicates (by URL or string) a particular version of a schema used in some CreativeWork

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'schemaVersion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates (by URL or string) a particular version of a schema used in some
CreativeWork. This property was created primarily to indicate the use of a
specific schema.org release, e.g. ```10.0``` as a simple string, or more
explicitly via URL, ```http://schema.org/docs/releases.html#v10.0```. There
may be situations in which other schemas might usefully be referenced this
way, e.g.
```http://dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but
this has not been carefully explored in the community.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
