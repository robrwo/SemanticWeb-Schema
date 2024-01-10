use utf8;

package SemanticWeb::Schema::volumeNumber;

# ABSTRACT: Identifies the volume of publication or multi-part work; for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'volumeNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Identifies the volume of publication or multi-part work; for example, "iii"
or "2".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
