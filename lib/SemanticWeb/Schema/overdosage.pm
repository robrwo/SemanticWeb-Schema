use utf8;

package SemanticWeb::Schema::overdosage;

# ABSTRACT: Any information related to overdose on a drug

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'overdosage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Any information related to overdose on a drug, including signs or symptoms,
treatments, contact information for emergency response.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
