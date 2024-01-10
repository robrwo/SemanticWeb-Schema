use utf8;

package SemanticWeb::Schema::PlaceboControlledTrial;

# ABSTRACT: A placebo-controlled trial design.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PlaceboControlledTrial';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A placebo-controlled trial design.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
