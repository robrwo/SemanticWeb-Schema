package LDF::Schema::ScholarlyArticle;

# ABSTRACT: A scholarly article.

use Moo;

extends qw/ LDF::Schema::Article /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A scholarly article.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ScholarlyArticle' }



=head1 SEE ALSO



L<LDF::Schema::Article>

=cut

1;
