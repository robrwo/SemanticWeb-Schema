use utf8;

package SemanticWeb::Schema::tissueSample;

# ABSTRACT: The type of tissue sample required for the test.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'tissueSample';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of tissue sample required for the test.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
