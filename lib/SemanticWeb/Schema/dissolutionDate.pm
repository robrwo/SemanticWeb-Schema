use utf8;

package SemanticWeb::Schema::dissolutionDate;

# ABSTRACT: The date that this organization was dissolved.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'dissolutionDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date that this organization was dissolved.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
