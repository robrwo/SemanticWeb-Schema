use utf8;

package SemanticWeb::Schema::Answer;

# ABSTRACT: An answer offered to a question; perhaps correct

use Moo;

extends qw/ SemanticWeb::Schema::Comment /;


use MooX::JSON_LD 'Answer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

An answer offered to a question; perhaps correct, perhaps opinionated or
wrong.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Comment>

=cut

1;
