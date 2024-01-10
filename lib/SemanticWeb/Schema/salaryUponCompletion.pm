use utf8;

package SemanticWeb::Schema::salaryUponCompletion;

# ABSTRACT: The expected salary upon completing the training.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'salaryUponCompletion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The expected salary upon completing the training.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
