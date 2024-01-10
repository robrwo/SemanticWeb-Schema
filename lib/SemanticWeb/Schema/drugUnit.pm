use utf8;

package SemanticWeb::Schema::drugUnit;

# ABSTRACT: The unit in which the drug is measured, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'drugUnit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The unit in which the drug is measured, e.g. '5 mg tablet'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
