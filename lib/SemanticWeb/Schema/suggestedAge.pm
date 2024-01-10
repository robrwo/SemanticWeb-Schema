use utf8;

package SemanticWeb::Schema::suggestedAge;

# ABSTRACT: The age or age range for the intended audience or person

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'suggestedAge';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The age or age range for the intended audience or person, for example 3-12
months for infants, 1-5 years for toddlers.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
