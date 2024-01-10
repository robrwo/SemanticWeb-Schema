use utf8;

package SemanticWeb::Schema::MediaEnumeration;

# ABSTRACT: MediaEnumeration enumerations are lists of codes

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MediaEnumeration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

MediaEnumeration enumerations are lists of codes, labels etc. useful for
describing media objects. They may be reflections of externally developed
lists, or created at schema.org, or a combination.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
