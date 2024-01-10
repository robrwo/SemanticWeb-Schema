use utf8;

package SemanticWeb::Schema::OfficialLegalValue;

# ABSTRACT: All the documents published by an official publisher should have at least the legal value level "OfficialLegalValue"

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'OfficialLegalValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

All the documents published by an official publisher should have at least
the legal value level "OfficialLegalValue". This indicates that the
document was published by an organisation with the public task of making it
available (e.g. a consolidated version of an EU directive published by the
EU Office of Publications).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
