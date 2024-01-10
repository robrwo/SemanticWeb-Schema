use utf8;

package SemanticWeb::Schema::guidelineDate;

# ABSTRACT: Date on which this guideline's recommendation was made.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'guidelineDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Date on which this guideline's recommendation was made.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
